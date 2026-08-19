.class Lcom/perm/kate/WallPostActivity$TextChangedListener;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x716b

    if-le p1, v0, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1026
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
