.class Lcom/perm/kate/NewsCursorAdapter$6;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f09040c

    .line 916
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const v0, 0x7f09040d

    .line 917
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const v0, 0x7f09040e

    .line 918
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 919
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v1, p1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->access$000(Lcom/perm/kate/NewsCursorAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v6

    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object p1, p1, Lcom/perm/kate/NewsCursorAdapter;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
