.class Lcom/perm/kate/NewsCursorAdapter$5;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCursorAdapter;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$5;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 808
    const v0, 0x7f0e0231

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 809
    .local v1, "_id":Ljava/lang/String;
    const v0, 0x7f0e0237

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 810
    .local v2, "_owner_id":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$5;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v4, p0, Lcom/perm/kate/NewsCursorAdapter$5;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->access$000(Lcom/perm/kate/NewsCursorAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v5

    iget-object v4, p0, Lcom/perm/kate/NewsCursorAdapter$5;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v4, v4, Lcom/perm/kate/NewsCursorAdapter;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroid/support/v4/app/Fragment;)V

    .line 811
    return-void
.end method
