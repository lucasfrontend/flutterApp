class Modelo {
	int? id;
	String? name;
	String? image;
	String? gender;
	String? hairColor;
	String? occupation;
	String? firstEpisode;
	String? voicedBy;
	String? url;
	String? wikiUrl;
	List<dynamic>? relatives;

	Modelo({
		this.id, 
		this.name, 
		this.image, 
		this.gender, 
		this.hairColor, 
		this.occupation, 
		this.firstEpisode, 
		this.voicedBy, 
		this.url, 
		this.wikiUrl, 
		this.relatives, 
	});

	factory Modelo.fromJson(Map<String, dynamic> json) => Modelo(
				id: json['id'] as int?,
				name: json['name'] as String?,
				image: json['image'] as String?,
				gender: json['gender'] as String?,
				hairColor: json['hairColor'] as String?,
				occupation: json['occupation'] as String?,
				firstEpisode: json['firstEpisode'] as String?,
				voicedBy: json['voicedBy'] as String?,
				url: json['url'] as String?,
				wikiUrl: json['wikiUrl'] as String?,
				relatives: json['relatives'] as List<dynamic>?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'image': image,
				'gender': gender,
				'hairColor': hairColor,
				'occupation': occupation,
				'firstEpisode': firstEpisode,
				'voicedBy': voicedBy,
				'url': url,
				'wikiUrl': wikiUrl,
				'relatives': relatives,
			};
}
