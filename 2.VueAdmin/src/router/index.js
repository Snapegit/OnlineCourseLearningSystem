	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import examquestion from '@/views/exam/examquestion/list'
	import zaixianjiaoliu from '@/views/zaixianjiaoliu/list'
	import jiaoshi from '@/views/jiaoshi/list'
	import exampaper from '@/views/exampaper/list'
	import discusskechengxinxi from '@/views/discusskechengxinxi/list'
	import kechengxinxi from '@/views/kechengxinxi/list'
	import xuexijindu from '@/views/xuexijindu/list'
	import zuoyexinxi from '@/views/zuoyexinxi/list'
	import forum from '@/views/forum/list'
	import jihuajindu from '@/views/jihuajindu/list'
	import kechengfenlei from '@/views/kechengfenlei/list'
	import chengjixinxi from '@/views/chengjixinxi/list'
	import yonghu from '@/views/yonghu/list'
	import xuexijihua from '@/views/xuexijihua/list'
	import tijiaozuoye from '@/views/tijiaozuoye/list'
	import kechengxuexi from '@/views/kechengxuexi/list'
	import config from '@/views/config/list'
	import exampaperlist from '@/views/exam/exampaperlist/list'
	import examination from '@/views/exam/exampaperlist/examination'
	import examrecord from '@/views/exam/examrecord/list'
	import examfailrecord from '@/views/exam/examfailrecord/list'
	import jiaoshiCenter from '@/views/jiaoshi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/jiaoshiCenter',
			name: '教师个人中心',
			component: jiaoshiCenter
		}
		,{
			path: '/examquestion',
			name: '试题管理',
			component: examquestion
		}
		,{
			path: '/zaixianjiaoliu',
			name: '在线交流',
			component: zaixianjiaoliu
		}
		,{
			path: '/jiaoshi',
			name: '教师',
			component: jiaoshi
		}
		,{
			path: '/exampaper',
			name: '试卷列表',
			component: exampaper
		}
		,{
			path: '/discusskechengxinxi',
			name: '课程信息评论',
			component: discusskechengxinxi
		}
		,{
			path: '/kechengxinxi',
			name: '课程信息',
			component: kechengxinxi
		}
		,{
			path: '/xuexijindu',
			name: '学习进度',
			component: xuexijindu
		}
		,{
			path: '/zuoyexinxi',
			name: '作业信息',
			component: zuoyexinxi
		}
		,{
			path: '/forum',
			name: '我的发布',
			component: forum
		}
		,{
			path: '/jihuajindu',
			name: '计划进度',
			component: jihuajindu
		}
		,{
			path: '/kechengfenlei',
			name: '课程分类',
			component: kechengfenlei
		}
		,{
			path: '/chengjixinxi',
			name: '成绩信息',
			component: chengjixinxi
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/xuexijihua',
			name: '学习计划',
			component: xuexijihua
		}
		,{
			path: '/tijiaozuoye',
			name: '提交作业',
			component: tijiaozuoye
		}
		,{
			path: '/kechengxuexi',
			name: '课程学习',
			component: kechengxuexi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		, {
			path: '/exampaperlist',
			name: '考试列表',
			component: exampaperlist
		}, {
			path: '/examrecord',
			name: '考试记录',
			component: examrecord
		}, {
			path: '/examfailrecord',
			name: '错题本',
			component: examfailrecord
		}
		]
	},
	{
		path: '/examination',
		name: '考试',
		component: examination
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
