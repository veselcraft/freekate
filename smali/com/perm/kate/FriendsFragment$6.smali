.class Lcom/perm/kate/FriendsFragment$6;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 292
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/FriendsFragment;->access$300(Lcom/perm/kate/FriendsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 293
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 294
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p3, p1, p2}, Lcom/perm/kate/FriendsFragment;->access$400(Lcom/perm/kate/FriendsFragment;J)V

    return-void

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/FriendsFragment;->access$300(Lcom/perm/kate/FriendsFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p1, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_2

    return-void

    .line 304
    :cond_2
    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 305
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p1, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 306
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p3}, Lcom/perm/kate/FriendsFragment;->access$500(Lcom/perm/kate/FriendsFragment;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p3}, Lcom/perm/kate/FriendsFragment;->access$600(Lcom/perm/kate/FriendsFragment;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 307
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p3, p1, p2}, Lcom/perm/kate/FriendsFragment;->access$400(Lcom/perm/kate/FriendsFragment;J)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p3}, Lcom/perm/kate/FriendsFragment;->access$500(Lcom/perm/kate/FriendsFragment;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p3}, Lcom/perm/kate/FriendsFragment;->access$600(Lcom/perm/kate/FriendsFragment;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 309
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 p4, 0x0

    invoke-static {p3, p1, p2, p4}, Lcom/perm/kate/FriendsFragment;->access$700(Lcom/perm/kate/FriendsFragment;JLjava/util/Set;)V

    goto :goto_0

    .line 311
    :cond_4
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
