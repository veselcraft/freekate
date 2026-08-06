.class Lcom/perm/kate/DocClickHelper$5;
.super Lcom/perm/kate/session/Callback;
.source "DocClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DocClickHelper;->editDoc(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$doc_id:J

.field final synthetic val$owner_id:J

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/DocClickHelper;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-wide p3, p0, Lcom/perm/kate/DocClickHelper$5;->val$doc_id:J

    iput-wide p5, p0, Lcom/perm/kate/DocClickHelper$5;->val$owner_id:J

    iput-object p7, p0, Lcom/perm/kate/DocClickHelper$5;->val$title:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 171
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v0}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 172
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 160
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 161
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$5;->val$doc_id:J

    iget-wide v4, p0, Lcom/perm/kate/DocClickHelper$5;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/DocClickHelper$5;->val$title:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->updateDocTitle(JJLjava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v1}, Lcom/perm/kate/DocClickHelper;->access$600(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v1}, Lcom/perm/kate/DocClickHelper;->access$600(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;->docEdited()V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v1}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 166
    return-void
.end method
