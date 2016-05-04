require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe TechTalksController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # TechTalk. As you add validations to TechTalk, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { title: "My tech talk" }
  }

  let(:invalid_attributes) {
    { title: "" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TechTalksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all tech_talks as @tech_talks" do
      tech_talk = TechTalk.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:tech_talks)).to eq([tech_talk])
    end
  end

  describe "GET #show" do
    it "assigns the requested tech_talk as @tech_talk" do
      tech_talk = TechTalk.create! valid_attributes
      get :show, {:id => tech_talk.to_param}, valid_session
      expect(assigns(:tech_talk)).to eq(tech_talk)
    end
  end

  describe "GET #new" do
    it "assigns a new tech_talk as @tech_talk" do
      get :new, {}, valid_session
      expect(assigns(:tech_talk)).to be_a_new(TechTalk)
    end
  end

  describe "GET #edit" do
    it "assigns the requested tech_talk as @tech_talk" do
      tech_talk = TechTalk.create! valid_attributes
      get :edit, {:id => tech_talk.to_param}, valid_session
      expect(assigns(:tech_talk)).to eq(tech_talk)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new TechTalk" do
        expect {
          post :create, {:tech_talk => valid_attributes}, valid_session
        }.to change(TechTalk, :count).by(1)
      end

      it "assigns a newly created tech_talk as @tech_talk" do
        post :create, {:tech_talk => valid_attributes}, valid_session
        expect(assigns(:tech_talk)).to be_a(TechTalk)
        expect(assigns(:tech_talk)).to be_persisted
      end

      it "redirects to the created tech_talk" do
        post :create, {:tech_talk => valid_attributes}, valid_session
        expect(response).to redirect_to(TechTalk.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved tech_talk as @tech_talk" do
        post :create, {:tech_talk => invalid_attributes}, valid_session
        expect(assigns(:tech_talk)).to be_a_new(TechTalk)
      end

      it "re-renders the 'new' template" do
        post :create, {:tech_talk => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { title: "My updated tech talk" }
      }

      it "updates the requested tech_talk" do
        tech_talk = TechTalk.create! valid_attributes
        put :update, {:id => tech_talk.to_param, :tech_talk => new_attributes}, valid_session
        tech_talk.reload
        expect(assigns(:tech_talk)).to eq(tech_talk)
      end

      it "assigns the requested tech_talk as @tech_talk" do
        tech_talk = TechTalk.create! valid_attributes
        put :update, {:id => tech_talk.to_param, :tech_talk => valid_attributes}, valid_session
        expect(assigns(:tech_talk)).to eq(tech_talk)
      end

      it "redirects to the tech_talk" do
        tech_talk = TechTalk.create! valid_attributes
        put :update, {:id => tech_talk.to_param, :tech_talk => valid_attributes}, valid_session
        expect(response).to redirect_to(tech_talk)
      end
    end

    context "with invalid params" do
      it "assigns the tech_talk as @tech_talk" do
        tech_talk = TechTalk.create! valid_attributes
        put :update, {:id => tech_talk.to_param, :tech_talk => invalid_attributes}, valid_session
        expect(assigns(:tech_talk)).to eq(tech_talk)
      end

      it "re-renders the 'edit' template" do
        tech_talk = TechTalk.create! valid_attributes
        put :update, {:id => tech_talk.to_param, :tech_talk => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested tech_talk" do
      tech_talk = TechTalk.create! valid_attributes
      expect {
        delete :destroy, {:id => tech_talk.to_param}, valid_session
      }.to change(TechTalk, :count).by(-1)
    end

    it "redirects to the tech_talks list" do
      tech_talk = TechTalk.create! valid_attributes
      delete :destroy, {:id => tech_talk.to_param}, valid_session
      expect(response).to redirect_to(tech_talks_url)
    end
  end

end
