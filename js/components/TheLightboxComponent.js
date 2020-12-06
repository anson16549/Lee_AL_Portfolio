import Graphic from "./TheImageComponent.js";

export default {
    props: ["item", "mediatype"],

    template: `
    <section class="lightbox">
    <span class="lb-close" @click="closelb">x</span>
    
    
    <!-- audio, video or graphic component get rendered here-->
    <component :is="currentComponent" :work="item"></component>
    </section>
    `,
    computed: {
        currentComponent: function() {
            //debugger;
            return this.mediatype;
        }
    },
    components: {
        Graphic
    },
    methods: {
        closelb() {
            document.querySelector('.lightbox').classList.remove('show-lightbox');
        }
    }
}