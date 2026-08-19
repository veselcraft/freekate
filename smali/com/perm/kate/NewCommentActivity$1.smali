.class Lcom/perm/kate/NewCommentActivity$1;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method public static synthetic $r8$lambda$XQ15xM0KIdWrYpwSpzSSWoOmyCg(Lcom/perm/kate/NewCommentActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity$1;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$500(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 184
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$100(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewCommentActivity;->access$002(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$000(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f033c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 192
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$200(Lcom/perm/kate/NewCommentActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x18daf37

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$400(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    iget-object p1, p1, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "ask"

    .line 193
    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->reportEvent(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1}, Lcom/perm/kate/NewCommentActivity;->access$000(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/utils/AnswerParser;->parse(Ljava/lang/String;)Lcom/perm/utils/AnswerType;

    move-result-object p1

    .line 195
    sget-object v0, Lcom/perm/utils/AnswerType;->UNKNOWN:Lcom/perm/utils/AnswerType;

    if-eq p1, v0, :cond_2

    const-string v0, "answer_found"

    .line 196
    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->reportEvent(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/perm/kate/NewCommentActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/NewCommentActivity$1;)V

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/NewCommentActivity;->showAnswer(Lcom/perm/utils/AnswerType;Lcom/perm/utils/SimpleListener;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$1;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/NewCommentActivity;->access$500(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V

    return-void
.end method
