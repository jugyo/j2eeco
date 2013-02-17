xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "j2ee.co"
    # xml.description "Translation Queue"
    xml.link root_url

    @qs.each do |q|
      xml.item do
        xml.title q.text
        xml.description q.text
        xml.pubDate q.created_at.to_s(:rfc822)
        xml.link q_url(q)
        xml.guid q_url(q)
      end
    end
  end
end
