.class Lcom/perm/kate/GroupTopicsActivity$4;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->refreshOnUiThread()V
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
    .line 137
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$4;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$4;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object v0, v0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$4;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget-object v0, v0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 142
    :cond_0
    return-void
.end method
