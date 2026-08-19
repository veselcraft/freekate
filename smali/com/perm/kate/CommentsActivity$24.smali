.class Lcom/perm/kate/CommentsActivity$24;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method public static synthetic $r8$lambda$P8QezN8wDmA13chHX6Q7ivACVts(Lcom/perm/kate/CommentsActivity$24;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity$24;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 987
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/CommentsActivity;->access$2800(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 990
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p1, p1, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 991
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f033c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 997
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    const-wide/32 v2, -0x18daf37

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "ask"

    .line 998
    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->reportEvent(Ljava/lang/String;)V

    .line 999
    invoke-static {p1}, Lcom/perm/utils/AnswerParser;->parse(Ljava/lang/String;)Lcom/perm/utils/AnswerType;

    move-result-object p1

    .line 1000
    sget-object v0, Lcom/perm/utils/AnswerType;->UNKNOWN:Lcom/perm/utils/AnswerType;

    if-eq p1, v0, :cond_2

    const-string v0, "answer_found"

    .line 1001
    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->reportEvent(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Lcom/perm/kate/CommentsActivity$24$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$24$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/CommentsActivity$24;)V

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/NewCommentActivity;->showAnswer(Lcom/perm/utils/AnswerType;Lcom/perm/utils/SimpleListener;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1008
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1011
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/CommentsActivity;->access$2800(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V

    return-void
.end method
