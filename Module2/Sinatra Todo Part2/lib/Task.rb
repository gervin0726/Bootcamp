class Task
  attr_reader(:content, :id, :created_at, :completed)
  @@current_id = 1
  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id +=1
    @completed = false
    @created_at = Time.now
    @updated_at = nil
  end

  def complete?
    @completed ? true : false
  end
  def complete!
    @completed = true
  end
  def make_incomplete!
    @completed = false
  end
  def update_content!(content)
    @content = content
    @updated_at = Time.now
  end
end
