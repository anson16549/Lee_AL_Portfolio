export default {
    name: "ImageComponent",

    props: ["work"],

    template: `<section class="image-player">
    <h4>{{work.title}}</h4>
    <img class="lb-thumb" :src="'img/' + work.image2" alt="portfolio thubmnail">
    <p>{{work.Description}}</p>
    
    
    <video class="lb-video" :src="'img/' + work.video" controls></video>
    
    
    
    </section>`
}