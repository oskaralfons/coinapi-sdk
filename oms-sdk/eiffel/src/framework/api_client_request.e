note
 description:"[
		OEML - REST API
 		Lorem2 Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 
  		The version of the OpenAPI document: v1
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	API_CLIENT_REQUEST

inherit

	ANY
		redefine
			default_create
		end


feature -- Access

	default_create
		do
			create {ARRAYED_LIST [TUPLE [name: STRING; value: STRING]]} query_params.make (0)
			create header_params.make (0)
			create form_params.make (0)
			create auth_names.make_empty
		end

feature -- Access

	query_params: LIST [TUPLE [name: STRING; value: STRING]]
			-- List of query parameters as a pair name, value.

	header_params: STRING_TABLE [STRING]
			-- table of header parameters.

	form_params: STRING_TABLE [ANY]
			-- table of form parameters.

	body: detachable ANY
			--	The request body object.

	auth_names: ARRAY [STRING]
			-- The authentications to apply	.

feature -- Change Element

	fill_query_params (a_params: like query_params)
			-- Fill all of the elements in the specified list `a_params' to the end of
     		-- `query_params'.
		do
			query_params.fill (a_params)
		end

	add_header (new: STRING; key: READABLE_STRING_GENERAL)
			-- Update `header_params' so that `new' will be the item associated
			-- with `key'.
		do
			header_params.force (new, key)
		end	

	add_form (new: ANY; key: READABLE_STRING_GENERAL)
			-- Update `form_params' so that `new' will be the item associated
			-- with `key'.
		do
			form_params.force (new, key)
		end	

	set_body (a_body: like body)
			-- Set 	'body' with 'a_body'.
		do
			body := a_body
		ensure
			body_set: body = a_body	
		end	

	set_auth_names (a_auth_names: like auth_names)
			-- Set 'auth_names' with 'a_auth_names'.
		do
			auth_names := a_auth_names
		ensure
			auth_names_set: auth_names = a_auth_names
		end	
end