.class Lcom/perm/kate/SendLogActivity$1;
.super Ljava/lang/Object;
.source "SendLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SendLogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SendLogActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SendLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SendLogActivity;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-static {v0}, Lcom/perm/kate/SendLogActivity;->access$000(Lcom/perm/kate/SendLogActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    const v1, 0x7f070384

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/perm/kate/LogCollector;

    iget-object v1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/LogCollector;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-static {v1}, Lcom/perm/kate/SendLogActivity;->access$000(Lcom/perm/kate/SendLogActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/LogCollector;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method
