.class Lcom/perm/kate/NewsCursorAdapter$6;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


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
    .line 814
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 2
    .param p1, "counts"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    new-instance v1, Lcom/perm/kate/NewsCursorAdapter$6$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCursorAdapter$6$1;-><init>(Lcom/perm/kate/NewsCursorAdapter$6;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 824
    return-void
.end method
