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

    .line 139
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;

    .line 143
    iget-object p1, p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 144
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    const v0, 0x7f0f0579

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$1;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    iget-object v0, v0, Lcom/perm/kate/PhotoChooserActivity;->selectBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
