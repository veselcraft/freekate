.class Lcom/perm/kate/PhotoEditActivity$1;
.super Ljava/lang/Object;
.source "PhotoEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoEditActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoEditActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/PhotoEditActivity;->showProgressBar(Z)V

    .line 47
    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoEditActivity;->access$000(Lcom/perm/kate/PhotoEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "caption":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/PhotoEditActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/PhotoEditActivity$1$1;-><init>(Lcom/perm/kate/PhotoEditActivity$1;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/perm/kate/PhotoEditActivity$1$1;->start()V

    .line 54
    return-void
.end method
