import ButtonComponent from "./components/TheButtonComponent.js";
import LightboxComponent from "./components/TheLightboxComponent.js";
import { fetchData } from "./components/TheDataMiner.js";

(() => {
    const myVM = new Vue({
        data: {
            currentItem: {},
            mediaType: "",
            mediaCollection: []
        },
        mounted: function() {
            fetchData('./includes/index.php').then(data => {
                this.mediaCollection = data;
            })
        },
        methods: {
            setComponent(project) {
                this.mediaType = project.mediatype;
                this.currentItem = project;
                document.querySelector('.lightbox').classList.add('show-lightbox');
            }
        },
        components: {

            "buttoncomponent": ButtonComponent,

            "lightbox": LightboxComponent
        }
    }).$mount("#app");
})();