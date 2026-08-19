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

    .line 30
    iput-object p1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 33
    iget-object p1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-static {p1}, Lcom/perm/kate/SendLogActivity;->access$000(Lcom/perm/kate/SendLogActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object p1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    const v0, 0x7f0f03f1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    const-string v1, "ask"

    invoke-static {v0, v1}, Lcom/perm/kate/SendLogActivity;->access$100(Lcom/perm/kate/SendLogActivity;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/perm/utils/AnswerParser;->parse(Ljava/lang/String;)Lcom/perm/utils/AnswerType;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/perm/utils/AnswerType;->UNKNOWN:Lcom/perm/utils/AnswerType;

    if-eq v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    const-string v2, "answer_found"

    invoke-static {v1, v2}, Lcom/perm/kate/SendLogActivity;->access$100(Lcom/perm/kate/SendLogActivity;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/SendLogActivity;->access$200(Lcom/perm/kate/SendLogActivity;Lcom/perm/utils/AnswerType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 53
    :cond_1
    new-instance v0, Lcom/perm/kate/LogCollector;

    iget-object v1, p0, Lcom/perm/kate/SendLogActivity$1;->this$0:Lcom/perm/kate/SendLogActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/LogCollector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/perm/kate/LogCollector;->execute(Ljava/lang/String;)V

    return-void
.end method
