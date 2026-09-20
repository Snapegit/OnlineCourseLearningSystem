const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '课程信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'课程信息',
							url:'/index/kechengxinxiList'
						},
					]
				},
				{
					name: '考试管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'试卷列表',
							url:'/index/exampaperList'
						},
					]
				},
				{
					name: '作业信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'作业信息',
							url:'/index/zuoyexinxiList'
						},
					]
				},
				{
					name: '论坛交流',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'论坛交流',
							url:'/index/forumList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "网上课程学习系统"
        } 
    }
}
export default config
