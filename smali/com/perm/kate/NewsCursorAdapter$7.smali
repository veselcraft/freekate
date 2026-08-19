.class Lcom/perm/kate/NewsCursorAdapter$7;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$7;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 1

    .line 926
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$7;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object p1, p1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    new-instance v0, Lcom/perm/kate/NewsCursorAdapter$7$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewsCursorAdapter$7$1;-><init>(Lcom/perm/kate/NewsCursorAdapter$7;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
