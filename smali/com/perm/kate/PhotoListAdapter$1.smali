.class Lcom/perm/kate/PhotoListAdapter$1;
.super Ljava/lang/Object;
.source "PhotoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoListAdapter;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 131
    .local v0, "cb":Landroid/widget/CheckBox;
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v7, v7, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v7, v7, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v7, v7, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v7}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v7

    if-lez v7, :cond_2

    .line 145
    const/4 v7, 0x3

    new-array v4, v7, [I

    .line 146
    .local v4, "text_id":[I
    const v7, 0x7f07003a

    aput v7, v4, v5

    .line 147
    const v5, 0x7f070084

    aput v5, v4, v6

    .line 148
    const/4 v5, 0x2

    const v6, 0x7f0702fa

    aput v6, v4, v5

    .line 149
    iget-object v5, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v5}, Lcom/perm/kate/PhotoListAdapter;->access$100(Lcom/perm/kate/PhotoListAdapter;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v6}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v5, v5, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v6, v6, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    :cond_1
    iget-object v5, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v5, v5, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "text_id":[I
    :cond_2
    return-void

    .line 138
    .restart local v2    # "id":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v7}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v7

    if-eq v7, v6, :cond_4

    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v7}, Lcom/perm/kate/PhotoListAdapter;->access$000(Lcom/perm/kate/PhotoListAdapter;)I

    move-result v7

    if-le v7, v6, :cond_5

    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v7, v7, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    const/16 v8, 0x19

    if-ge v7, v8, :cond_5

    :cond_4
    move v1, v6

    .line 139
    .local v1, "check":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v7, p0, Lcom/perm/kate/PhotoListAdapter$1;->this$0:Lcom/perm/kate/PhotoListAdapter;

    iget-object v7, v7, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1    # "check":Z
    :cond_5
    move v1, v5

    .line 138
    goto :goto_1
.end method
