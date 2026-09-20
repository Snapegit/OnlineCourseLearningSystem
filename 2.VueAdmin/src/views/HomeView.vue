<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('kechengxinxi','首页总数')">
				<el-card v-show="countTypeList.closekechengxinxiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								课程信息
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenkechengxinxiCountType')" class="showIcons"
									:class="countTypeList.hiddenkechengxinxiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closekechengxinxiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenkechengxinxiCountType">
							<div class="count_title">课程信息总数</div>
							<div class="count_num">{{kechengxinxiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chengjixinxi','首页总数')">
				<el-card v-show="countTypeList.closechengjixinxiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								成绩信息
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenchengjixinxiCountType')" class="showIcons"
									:class="countTypeList.hiddenchengjixinxiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closechengjixinxiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenchengjixinxiCountType">
							<div class="count_title">成绩信息总数</div>
							<div class="count_num">{{chengjixinxiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('kechengxinxi','首页统计')">
				<el-card v-show="cardTypeList.closekechengxinxiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								课程信息
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenkechengxinxiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenkechengxinxiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closekechengxinxiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenkechengxinxiChartType1">
							<div id="kechengxinxikechengfenleiEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chengjixinxi','首页统计')">
				<el-card v-show="cardTypeList.closechengjixinxiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								成绩信息
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchengjixinxiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenchengjixinxiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechengjixinxiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchengjixinxiChartType1">
							<div id="chengjixinxichengjiEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closekechengxinxiCountType = true
		countTypeList.value.hiddenkechengxinxiCountType = true
		if(btnAuth('kechengxinxi','首页总数')){
			getkechengxinxiCount()
		}
		countTypeList.value.closechengjixinxiCountType = true
		countTypeList.value.hiddenchengjixinxiCountType = true
		if(btnAuth('chengjixinxi','首页总数')){
			getchengjixinxiCount()
		}
	}
	const kechengxinxiCount = ref(0)
	const getkechengxinxiCount = () => {
		context?.$http({
			url:'kechengxinxi/count',
			method: 'get'
		}).then(res=>{
			kechengxinxiCount.value = res.data.data
		})
	}
	const chengjixinxiCount = ref(0)
	const getchengjixinxiCount = () => {
		context?.$http({
			url:'chengjixinxi/count',
			method: 'get'
		}).then(res=>{
			chengjixinxiCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closekechengxinxiChartType1: true,
		hiddenkechengxinxiChartType1: true,
		closechengjixinxiChartType1: true,
		hiddenchengjixinxiChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('kechengxinxi','首页统计')){
			getkechengxinxiChart1()
		}
		if(btnAuth('chengjixinxi','首页统计')){
			getchengjixinxiChart1()
		}
	}
	const getkechengxinxiChart1 = () => {
		nextTick(()=>{
			var kechengfenleiEchart1 = echarts.init(document.getElementById("kechengxinxikechengfenleiEchart1"),'macarons');
			context?.$http({
				url: "kechengxinxi/group/kechengfenlei",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].kechengfenlei);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].kechengfenlei
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '课程类型统计',
                        left: 'center'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    tooltip: {
						trigger: 'item',
						formatter: '{b} : {c} ({d}%)'
                    },
                    series: [
                        {
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '60%'],
                            data: pArray,
                            emphasis: {
                                itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
									shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
				kechengfenleiEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				kechengfenleiEchart1.setOption(option);
				//根据窗口的大小变动图表
				kechengfenleiEchart1.resize();
			})
		})
	}
	const getchengjixinxiChart1 = () => {
		nextTick(()=>{
			var chengjiEchart1 = echarts.init(document.getElementById("chengjixinxichengjiEchart1"),'macarons');
			context?.$http({
				url: `chengjixinxi/value/kechengmingcheng/chengji`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].kechengmingcheng);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].kechengmingcheng
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '课程成绩统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				chengjiEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				chengjiEchart1.setOption(option);
				//根据窗口的大小变动图表
				chengjiEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		margin: 20px 0 20px;
		color: #4F1904;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 22px;
		justify-content: center;
		align-items: center;
		height: auto;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		grid-column-gap: 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 1px solid #ddd;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			padding-top: 60px;
			flex: 1;
			background: linear-gradient(90deg,#FFFAF2, #FDE9CB);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border-radius: 20px 0 0 20px;
				padding: 0 20px;
				top: 20px;
				background: #EED6B4;
				line-height: 40px;
				position: absolute;
				right: 0;
				border-bottom: none;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #313131;
						font-size: 14px;
						margin-right: 40px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #313131;
							font-weight: 700;
							font-size: 14px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px;
					text-align: center;
					// 总数标题
					.count_title{
						color: #9E9E9E;
						font-size: 18px;
						line-height: 2;
						text-align: left;
					}
					// 总数数字
					.count_num{
						color: #E7B668;
						font-weight: 700;
						font-size: 64px;
						line-height: 1;
						text-align: left;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 0px 30px;
		margin: 0;
		background: url(http://clfile.zggen.cn/20240203/480e76b8afa24188a2f7a3a171f56e7d.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 1px solid #ddd;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			padding-top: 60px;
			margin: 0 1% 30px;
			width: 48%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border-radius: 20px 0px 0px 20px;
				padding: 0px 20px;
				top: 20px;
				background: rgb(238, 214, 180);
				line-height: 40px;
				position: absolute;
				right: 0;
				border-bottom: none;
				// 头部盒子
				.index_card_head {
					display: flex;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #313131;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #313131;
							font-weight: 700;
							font-size: 14px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
