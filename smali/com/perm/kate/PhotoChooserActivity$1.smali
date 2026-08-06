.class Lcom/perm/kate/PhotoChooserActivity$1;
.super Ljava/lang/Object;
.source "PhotoChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoChooserActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoChooserActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;

    .line 134
    .local v1, "holder":Lcom/perm/kate/PhotoChooserActivity$ViewHolder;
    iget-object v0, v1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 135
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 136
    .local v2, "id":I
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    const v5, 0x7f0704f4

    invoke-virtual {v4, v5}, Lcom/perm/kate/PhotoChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v5}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    iget-object v4, v4, Lcom/perm/kate/PhotoChooserActivity;->selectBtn:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 140
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
