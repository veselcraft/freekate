.class Lcom/perm/kate/FriendsFragment$7;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$500(Lcom/perm/kate/FriendsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    .line 308
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 309
    .local v0, "me_id":J
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3, v0, v1}, Lcom/perm/kate/FriendsFragment;->access$600(Lcom/perm/kate/FriendsFragment;J)V

    .line 331
    .end local v0    # "me_id":J
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$500(Lcom/perm/kate/FriendsFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    add-int/lit8 p3, p3, -0x1

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v3, v3, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v3, v3, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 320
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v3, v3, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v6, v6, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 321
    .local v4, "uid":J
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$700(Lcom/perm/kate/FriendsFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$800(Lcom/perm/kate/FriendsFragment;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 322
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3, v4, v5}, Lcom/perm/kate/FriendsFragment;->access$600(Lcom/perm/kate/FriendsFragment;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v4    # "uid":J
    :catch_0
    move-exception v2

    .line 328
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 323
    .end local v2    # "th":Ljava/lang/Throwable;
    .restart local v4    # "uid":J
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$700(Lcom/perm/kate/FriendsFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$800(Lcom/perm/kate/FriendsFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/perm/kate/FriendsFragment;->access$100(Lcom/perm/kate/FriendsFragment;JLjava/util/Set;)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$7;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
