class Scraper

    def self.get_games #gets games + info
        site = "https://store.steampowered.com/vr/#p=0&tab=NewReleases"
        doc = Nokogiri::HTML(open(site))

        game = 0
        while game < 10
            name = doc.css("div.tab_item_name")[game].text.strip
            price = doc.css("div.discount_final_price")[game].text.strip
            tags = doc.css("div.tab_item_top_tags")[game].text.strip

            description_url = doc.css("a.tab_item")[game]["href"]
            description_info = Nokogiri::HTML(open(description_url))

            description = description_info.css("div.game_description_snippet").text.strip
            Game.new(name,price,tags,description)
            game += 1
        end
        
    end

end
## Communicates with website, goes into and gets info amd returns it