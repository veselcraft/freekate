.class Lcom/perm/kate/WallMessageListAdapter$4;
.super Ljava/lang/Object;
.source "WallMessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageListAdapter;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f09040c

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const v0, 0x7f09040d

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const v0, 0x7f090407

    .line 353
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    iget-wide v0, v0, Lcom/perm/kate/WallMessageListAdapter;->account_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 357
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {p1}, Lcom/perm/kate/WallMessageListAdapter;->access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v1

    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {p1}, Lcom/perm/kate/WallMessageListAdapter;->access$100(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v6

    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$4;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    iget-object p1, p1, Lcom/perm/kate/WallMessageListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroidx/fragment/app/Fragment;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
