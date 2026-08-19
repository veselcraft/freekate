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

    .line 177
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$000(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 182
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$100(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$000(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-lez p2, :cond_1

    .line 183
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$100(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 185
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 191
    :goto_0
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 192
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 193
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$200(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 194
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 195
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    .line 197
    iget-object p5, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p5}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/HashMap;->clear()V

    .line 198
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/StrPair;

    .line 199
    iget-object v2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, v1, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_2
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    const v1, 0x1090008

    invoke-direct {p2, v0, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p4, 0x1090009

    .line 204
    invoke-virtual {p2, p4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 205
    iget-object p4, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/EditGroupActivity;->access$400(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p4, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 207
    iget-object p4, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 208
    iget-object p4, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object p4

    iget-object p4, p4, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-static {p4}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object p4

    iget-object p4, p4, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 210
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p4, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p4}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object p4

    iget-object p4, p4, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 211
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$300(Lcom/perm/kate/EditGroupActivity;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p3, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p3}, Lcom/perm/kate/EditGroupActivity;->access$600(Lcom/perm/kate/EditGroupActivity;)Lcom/perm/kate/api/GroupSettings;

    move-result-object p3

    iget-object p3, p3, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    .line 212
    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 213
    iget-object p2, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p2}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 216
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$400(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$1;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$500(Lcom/perm/kate/EditGroupActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
