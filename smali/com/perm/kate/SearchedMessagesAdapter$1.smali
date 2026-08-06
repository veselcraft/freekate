.class Lcom/perm/kate/SearchedMessagesAdapter$1;
.super Ljava/lang/Object;
.source "SearchedMessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchedMessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchedMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchedMessagesAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchedMessagesAdapter;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/perm/kate/SearchedMessagesAdapter$1;->this$0:Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    const v1, 0x7f0e026f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 223
    .local v0, "user_id":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v1, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/SearchedMessagesAdapter$1;->this$0:Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-static {v1}, Lcom/perm/kate/SearchedMessagesAdapter;->access$000(Lcom/perm/kate/SearchedMessagesAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchedMessagesAdapter$1;->this$0:Lcom/perm/kate/SearchedMessagesAdapter;

    invoke-static {v2}, Lcom/perm/kate/SearchedMessagesAdapter;->access$000(Lcom/perm/kate/SearchedMessagesAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method
