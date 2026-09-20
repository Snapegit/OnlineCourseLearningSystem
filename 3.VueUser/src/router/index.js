import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import storeupList from '@/views/pages/storeup/list'
import jiaoshiList from '@/views/pages/jiaoshi/list'
import jiaoshiDetail from '@/views/pages/jiaoshi/formModel'
import jiaoshiAdd from '@/views/pages/jiaoshi/formAdd'
import kechengfenleiList from '@/views/pages/kechengfenlei/list'
import kechengfenleiDetail from '@/views/pages/kechengfenlei/formModel'
import kechengfenleiAdd from '@/views/pages/kechengfenlei/formAdd'
import kechengxinxiList from '@/views/pages/kechengxinxi/list'
import kechengxinxiDetail from '@/views/pages/kechengxinxi/formModel'
import kechengxinxiAdd from '@/views/pages/kechengxinxi/formAdd'
import kechengxuexiList from '@/views/pages/kechengxuexi/list'
import kechengxuexiDetail from '@/views/pages/kechengxuexi/formModel'
import kechengxuexiAdd from '@/views/pages/kechengxuexi/formAdd'
import zuoyexinxiList from '@/views/pages/zuoyexinxi/list'
import zuoyexinxiDetail from '@/views/pages/zuoyexinxi/formModel'
import zuoyexinxiAdd from '@/views/pages/zuoyexinxi/formAdd'
import forumList from '@/views/pages/forum/list'
import xuexijinduList from '@/views/pages/xuexijindu/list'
import xuexijinduDetail from '@/views/pages/xuexijindu/formModel'
import xuexijinduAdd from '@/views/pages/xuexijindu/formAdd'
import tijiaozuoyeList from '@/views/pages/tijiaozuoye/list'
import tijiaozuoyeDetail from '@/views/pages/tijiaozuoye/formModel'
import tijiaozuoyeAdd from '@/views/pages/tijiaozuoye/formAdd'
import chengjixinxiList from '@/views/pages/chengjixinxi/list'
import chengjixinxiDetail from '@/views/pages/chengjixinxi/formModel'
import chengjixinxiAdd from '@/views/pages/chengjixinxi/formAdd'
import zaixianjiaoliuList from '@/views/pages/zaixianjiaoliu/list'
import zaixianjiaoliuDetail from '@/views/pages/zaixianjiaoliu/formModel'
import zaixianjiaoliuAdd from '@/views/pages/zaixianjiaoliu/formAdd'
import xuexijihuaList from '@/views/pages/xuexijihua/list'
import xuexijihuaDetail from '@/views/pages/xuexijihua/formModel'
import xuexijihuaAdd from '@/views/pages/xuexijihua/formAdd'
import jihuajinduList from '@/views/pages/jihuajindu/list'
import jihuajinduDetail from '@/views/pages/jihuajindu/formModel'
import jihuajinduAdd from '@/views/pages/jihuajindu/formAdd'
import exampaperList from '@/views/pages/exam/exampaperList'
import examination from '@/views/pages/exam/examination'
import examrecordList from '@/views/pages/exam/examrecordList'
import examfailrecord from '@/views/pages/exam/examfailrecord'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'jiaoshiList',
			component: jiaoshiList
		}, {
			path: 'jiaoshiDetail',
			component: jiaoshiDetail
		}, {
			path: 'jiaoshiAdd',
			component: jiaoshiAdd
		}
		, {
			path: 'kechengfenleiList',
			component: kechengfenleiList
		}, {
			path: 'kechengfenleiDetail',
			component: kechengfenleiDetail
		}, {
			path: 'kechengfenleiAdd',
			component: kechengfenleiAdd
		}
		, {
			path: 'kechengxinxiList',
			component: kechengxinxiList
		}, {
			path: 'kechengxinxiDetail',
			component: kechengxinxiDetail
		}, {
			path: 'kechengxinxiAdd',
			component: kechengxinxiAdd
		}
		, {
			path: 'kechengxuexiList',
			component: kechengxuexiList
		}, {
			path: 'kechengxuexiDetail',
			component: kechengxuexiDetail
		}, {
			path: 'kechengxuexiAdd',
			component: kechengxuexiAdd
		}
		, {
			path: 'zuoyexinxiList',
			component: zuoyexinxiList
		}, {
			path: 'zuoyexinxiDetail',
			component: zuoyexinxiDetail
		}, {
			path: 'zuoyexinxiAdd',
			component: zuoyexinxiAdd
		}
		, {
			path: 'forumList',
			component: forumList
		}
		, {
			path: 'xuexijinduList',
			component: xuexijinduList
		}, {
			path: 'xuexijinduDetail',
			component: xuexijinduDetail
		}, {
			path: 'xuexijinduAdd',
			component: xuexijinduAdd
		}
		, {
			path: 'tijiaozuoyeList',
			component: tijiaozuoyeList
		}, {
			path: 'tijiaozuoyeDetail',
			component: tijiaozuoyeDetail
		}, {
			path: 'tijiaozuoyeAdd',
			component: tijiaozuoyeAdd
		}
		, {
			path: 'chengjixinxiList',
			component: chengjixinxiList
		}, {
			path: 'chengjixinxiDetail',
			component: chengjixinxiDetail
		}, {
			path: 'chengjixinxiAdd',
			component: chengjixinxiAdd
		}
		, {
			path: 'zaixianjiaoliuList',
			component: zaixianjiaoliuList
		}, {
			path: 'zaixianjiaoliuDetail',
			component: zaixianjiaoliuDetail
		}, {
			path: 'zaixianjiaoliuAdd',
			component: zaixianjiaoliuAdd
		}
		, {
			path: 'xuexijihuaList',
			component: xuexijihuaList
		}, {
			path: 'xuexijihuaDetail',
			component: xuexijihuaDetail
		}, {
			path: 'xuexijihuaAdd',
			component: xuexijihuaAdd
		}
		, {
			path: 'jihuajinduList',
			component: jihuajinduList
		}, {
			path: 'jihuajinduDetail',
			component: jihuajinduDetail
		}, {
			path: 'jihuajinduAdd',
			component: jihuajinduAdd
		}
		, {
			path: 'exampaperList',
			component: exampaperList
		}, {
			path: 'examrecordList',
			component: examrecordList
		}, {
			path: 'examfailrecord',
			component: examfailrecord
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
	, {
		path: '/examination',
		component: examination
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
