export default {
    name: "ButtonComponent",

    props: ['item'],

    template: `
    <div @click="loadMediaComponent" class="button-wrapper" :data-mediatype="item.mediatype">
    <img class="lb-thumb" :src="'img/' + item.image" alt="portfolio thubmnail">
    <div class="textForm">
    <div class="lb-thumb-title">{{item.title}}</div>
    <div class="lb-thumb-subtitle">{{item.subtitle}}</div>
    </div>
    </div>
    `,
    methods: {
        loadMediaComponent(event) {
            //
            this.$emit("setmediatype", this.item);
        }
    }
}