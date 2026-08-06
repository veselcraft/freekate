.class Lcom/perm/kate/EditGroupActivity$1;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "0"

    .line 181
    .local v2, "new_selected_category_id":Ljava/lang/String;
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$000(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 182
    .local v4, "selected_item":Ljava/lang/String;
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$100(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$000(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    if-lez v10, :cond_1

    .line 183
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$100(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "new_selected_category_id":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 191
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "new_selected_category_id":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 192
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 193
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 194
    .local v9, "subitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/StrPair;>;"
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 195
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/String;

    .line 196
    .local v8, "subcategory_items":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 197
    .local v1, "j":I
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 198
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/StrPair;

    .line 199
    .local v3, "pair":Lcom/perm/kate/api/StrPair;
    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v11}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v3, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v13, v3, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v11, v3, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    aput-object v11, v8, v1

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    goto :goto_0

    .line 203
    .end local v3    # "pair":Lcom/perm/kate/api/StrPair;
    :cond_2
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v11, 0x1090008

    invoke-direct {v5, v10, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 204
    .local v5, "subcategory_adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v10, 0x1090009

    invoke-virtual {v5, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 205
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$400(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 207
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 208
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object v10

    iget-object v10, v10, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-static {v10}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object v10

    iget-object v10, v10, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 209
    const/4 v6, 0x0

    .line 210
    .local v6, "subcategory_item":Ljava/lang/String;
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v11}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object v11

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 211
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v11}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object v11

    iget-object v11, v11, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "subcategory_item":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 212
    .restart local v6    # "subcategory_item":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 213
    .local v7, "subcategory_item_position":I
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 222
    .end local v1    # "j":I
    .end local v5    # "subcategory_adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6    # "subcategory_item":Ljava/lang/String;
    .end local v7    # "subcategory_item_position":I
    .end local v8    # "subcategory_items":[Ljava/lang/String;
    .end local v9    # "subitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/StrPair;>;"
    :cond_4
    :goto_1
    return-void

    .line 216
    .restart local v9    # "subitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/StrPair;>;"
    :cond_5
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$400(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 218
    iget-object v10, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v10}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
