.class Lcom/perm/kate/PhotoListAdapter$1;
.super Ljava/lang/Object;
.source "PhotoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoListAdapter;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, v1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object p1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object p1, p1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v1}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v1}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v1

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, v1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/16 v4, 0x19

    if-ge v1, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    iget-object p1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object p1, p1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v0, p1, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 152
    fill-array-data p1, :array_0

    .line 156
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v0}, Lcom/perm/kate/PhotoListAdapter;->access$100(Lcom/perm/kate/PhotoListAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v1}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v1

    sub-int/2addr v1, v3

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v0, v0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object p1, p1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v0, v0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x7f0f0051
        0x7f0f00ba
        0x7f0f035a
    .end array-data
.end method
