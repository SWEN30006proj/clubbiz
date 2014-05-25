module EventsHelper

  #extratcs society names from database using society id
  def display_society_names_from_id(ids)
      if !ids.nil?
        ids = ids.split(" ")
        if ids.size > 0
          society_names = ""
          if ids.size == 1
            if !Society.find_by_id(ids).nil?
              society_names << '<a href=/societies/' + ids.to_s + '>' + Society.find_by_id(ids).society_name + '</a><br>'
            end
          else
            ids.each do |i|
              if !Society.find_by_id(i).nil?
                society_names << '<a href=/societies/' + i.to_s + '>' + Society.find_by_id(i).society_name +  '</a><br>'
              end
            end
          end
          society_names.html_safe
        end
      end
  end

  #transforms integer array into a string of integers delimited by a space
  def integer_array_into_string(integer_array)
    societies_ids =  integer_array.map(&:to_i)
    societies_ids_string = ""
    (societies_ids.size).times do |i|
      societies_ids_string << societies_ids[i].to_s + ' '
    end
    societies_ids_string
  end

  #transforms string of integers delimited by a space into an integer array
  def string_to_integer_array(string_var)
    if !string_var.nil?
      string_array = string_var.split(" ")
      integer_array = string_array.map(&:to_i)
      integer_array
    end
  end


end

