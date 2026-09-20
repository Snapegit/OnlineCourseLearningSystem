<template>
	<div>
		<div class="home_box">
			<!-- 课程信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">课程信息展示</div>
				<div class="home_list_two">
					<mySwiper :data="kechengxinxiHomeList" :type="3"
						:loop="true"
						:navigation="false"
						:pagination="true"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="1"
						:spaceBetween="0"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="true"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="1">
						<template #default="scope">
							<div class="home_item animation_box" @click="detailClick('kechengxinxi',scope.row.id)">
								<div class="home_img_box">
									<img class="home_img" v-if="isHttp(scope.row.kechengfengmian)" :src="scope.row.kechengfengmian.split(',')[0]" alt="">
									<img class="home_img" v-else :src="scope.row.kechengfengmian?$config.url + scope.row.kechengfengmian.split(',')[0]:''" alt="">
								</div>
								<div class="home_content">
									<div class='home_title'>
										{{scope.row.kechengmingcheng}}
									</div>
									<div class='home_title'>
										发布时间：{{scope.row.fabushijian}}
									</div>
									<div class='home_title'>
										教师姓名：{{scope.row.jiaoshixingming}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="homeList_more_view" @click="moreClick('kechengxinxi')">
					<span class="homeList_more_text">更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 作业信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">作业信息展示</div>
				<div class="home_list_two">
					<mySwiper :data="zuoyexinxiHomeList" :type="3"
						:loop="true"
						:navigation="false"
						:pagination="true"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="1"
						:spaceBetween="0"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="true"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="1">
						<template #default="scope">
							<div class="home_item animation_box" @click="detailClick('zuoyexinxi',scope.row.id)">
								<div class="home_img_box">
									<img class="home_img" v-if="isHttp(scope.row.fengmian)" :src="scope.row.fengmian.split(',')[0]" alt="">
									<img class="home_img" v-else :src="scope.row.fengmian?$config.url + scope.row.fengmian.split(',')[0]:''" alt="">
								</div>
								<div class="home_content">
									<div class='home_title'>
										{{scope.row.zuoyemingcheng}}
									</div>
									<div class='home_title'>
										发布时间：{{scope.row.fabushijian}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="homeList_more_view" @click="moreClick('zuoyexinxi')">
					<span class="homeList_more_text">更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
		</div>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//课程信息首页展示
	const kechengxinxiHomeList = ref([])
	const getkechengxinxiHomeList = () => {
		context?.$http({
			url: 'kechengxinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 8
			}
		}).then(res => {
			kechengxinxiHomeList.value = res.data.data.list
		})
	}
	//作业信息首页展示
	const zuoyexinxiHomeList = ref([])
	const getzuoyexinxiHomeList = () => {
		context?.$http({
			url: 'zuoyexinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 8
			}
		}).then(res => {
			zuoyexinxiHomeList.value = res.data.data.list
		})
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//课程信息首页展示
		getkechengxinxiHomeList()
		//作业信息首页展示
		getzuoyexinxiHomeList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		border-radius: 4px;
		padding: 0px;
		margin: 0 auto;
		background: none;
		display: flex;
		width: 1200px;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 0 0 20px;
		margin: 20px auto 0;
		background: #fff;
		width: 100%;
		position: relative;
		order: 4;
		.recomList_title {
			padding: 0 0 0 16px;
			margin: 0;
			color: #fff;
			background: url(http://clfile.zggen.cn/20240123/cf02fa1d4a2442b581a3d62afcc09015.png) no-repeat left center,#fbfbfb;
			font-weight: 500;
			width: 100%;
			font-size: 16px;
			border-color: #eee;
			border-width: 1px;
			line-height: 38px;
			border-style: solid;
			text-align: left;
		}
		// list
		.recommend_list_two {
			padding: 0 20px;
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.recommend_item {
				cursor: pointer;
				margin: 0;
				background: none;
				width: 100%;
				.recommend_img_box {
					margin: 0 0 6px;
					width: 100%;
					height: 200px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					.recommend_title {
						overflow: hidden;
						color: #333;
						white-space: nowrap;
						background: none;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 24px;
						text-overflow: ellipsis;
						text-align: left;
					}
					.recommend_price {
						color: #c00;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 1;
						text-align: right;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 0;
			color: #fff;
			line-height: 38px;
			right: 10px;
			border-radius: 0px;
			top: 0;
			background: none;
			width: 89px;
			position: absolute;
			text-align: right;
			height: 38px;
			.recommend_more_text {
				color: #fb621c;
			}
			.el-icon {
				color: #fb621c;
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 0px;
		margin: 20px 0 0;
		background: #fff;
		flex: 1;
		width: calc(100% - 395px);
		position: relative;
		order: 1;
		height: auto;

		.newsList_title {
			padding: 0 0 0 16px;
			margin: 0 auto 20px;
			color: #fff;
			background: url(http://clfile.zggen.cn/20240123/cf02fa1d4a2442b581a3d62afcc09015.png) no-repeat left center,#fbfbfb;
			font-weight: 500;
			width: 100%;
			font-size: 16px;
			border-color: #eee;
			border-width: 1px;
			line-height: 38px;
			border-style: solid;
			text-align: left;
		}
		// list
		.news_list_one {
			padding: 0px 20px;
			margin: 0px 0 0;
			background: #fff;
			display: flex;
			width: 100%;
			min-height: 280px;
			justify-content: space-between;
			flex-wrap: wrap;
			.news_item {
				cursor: pointer;
				margin: 0 0 16px 0;
				background: #fff;
				display: flex;
				width: calc(100% - 0px);
				align-items: center;
				.news_img_box {
					display: none;
					width: 100px;
					height: 100px;
					.news_img {
						border: 6px solid #ebe9dd;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.news_content {
					margin: 0 0 0 0px;
					display: flex;
					width: calc(100% - 80px);
					flex-wrap: wrap;
					.news_title {
						padding: 0 0 0 15px;
						margin: 0 0 0px;
						overflow: hidden;
						white-space: nowrap;
						background: url(http://clfile.zggen.cn/20240123/e664a8ade7064178b06105b4d98da3ca.png) no-repeat left center;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						text-overflow: ellipsis;
						text-align: left;
						order: 2;
					}
					.news_text {
						padding: 0 10px 0 0;
						overflow: hidden;
						display: none;
						font-size: 14px;
						line-height: 24px;
						height: 48px;
						order: 3;
					}
					.news_time {
						color: #333;
						font-weight: 600;
						display: none;
						width: 100%;
						text-align: left;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0px 0;
			margin: 0;
			color: #999;
			line-height: 38px;
			right: 10px;
			border-radius: 0px;
			top: 0px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: right;
			height: 38px;
			.news_more_text {
				color: #fb621c;
			}
			.el-icon {
				color: #fb621c;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 0px;
		margin: 20px 0 0 20px;
		background: #fff;
		width: 375px;
		position: relative;
		order: 2;

		.homeList_title {
			padding: 0 0 0 16px;
			margin: 0;
			color: #fff;
			background: url(http://clfile.zggen.cn/20240123/cf02fa1d4a2442b581a3d62afcc09015.png) no-repeat left center,#fbfbfb;
			font-weight: 500;
			width: 100%;
			font-size: 16px;
			border-color: #eee;
			border-width: 1px;
			line-height: 38px;
			border-style: solid;
			text-align: left;
		}
		// list
		.home_list_two {
			padding: 0 20px;
			margin: 20px auto;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.home_item {
				margin: 0;
				background: none;
				width: 100%;
				.home_img_box {
					cursor: pointer;
					margin: 0;
					width: 100%;
					position: relative;
					height: 260px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.home_content {
					.home_title {
						border: 1px solid #eee;
						margin: 0;
						color: #333;
						white-space: nowrap;
						font-weight: 500;
						font-size: 14px;
						line-height: 30px;
						text-overflow: ellipsis;
						overflow: hidden;
						top: 0;
						background: #fbfbfb;
						width: calc(100% - 0px);
						position: absolute;
						text-align: center;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 0;
			z-index: 9;
			color: #999;
			line-height: 38px;
			right: 10px;
			border-radius: 0px;
			top: 0px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: right;
			height: 38px;
			.homeList_more_text {
				color: #fb621c;
			}
			.el-icon {
				color: #fb621c;
			}
		}
	}
	// 首页展示
</style>