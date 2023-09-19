<div id="slider">
    <div class="imageSlide js-banner owl-carousel">
        @foreach($slides as $item)
            <div>
                <a  title="{{ $item->sd_title }}">
                    <img alt="" src="{{ pare_url_file($item->sd_image) }}"  style="max-width: 100%;height: 300px;" class="" />
                </a>
            </div>
        @endforeach
    </div>
</div>
