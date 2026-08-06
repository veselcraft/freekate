.class Lcom/perm/kate/GroupTopicsActivity$11;
.super Ljava/lang/Thread;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 284
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object v0, v0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object v0, v0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 287
    .local v7, "offset":I
    :goto_1
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$200(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result v6

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$1000(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/GroupTopicsActivity$11;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->getGroupTopics(JLjava/lang/Integer;IIILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .end local v7    # "offset":I
    :cond_1
    move v7, v5

    .line 286
    goto :goto_1
.end method
