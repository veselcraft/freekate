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
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 990
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$3100(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 999
    :goto_0
    return-void

    .line 992
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 993
    .local v0, "length":I
    const/16 v1, 0x716b

    if-le v0, v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$3100(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$3100(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    rsub-int v2, v0, 0x716b

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 998
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$TextChangedListener;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$3100(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1000
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1001
    return-void
.end method
