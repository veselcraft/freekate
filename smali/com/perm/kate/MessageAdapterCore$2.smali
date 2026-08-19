.class Lcom/perm/kate/MessageAdapterCore$2;
.super Ljava/lang/Object;
.source "MessageAdapterCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageAdapterCore;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageAdapterCore;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore$2;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090186

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget v2, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore$2;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-static {v0}, Lcom/perm/kate/MessageAdapterCore;->access$100(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/perm/kate/MessageAdapterCore$2;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-static {p1}, Lcom/perm/kate/MessageAdapterCore;->access$100(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/BaseActivity;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
