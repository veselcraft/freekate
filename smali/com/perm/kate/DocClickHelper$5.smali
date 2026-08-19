.class Lcom/perm/kate/DocClickHelper$5;
.super Lcom/perm/kate/session/Callback;
.source "DocClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$doc_id:J

.field final synthetic val$owner_id:J

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;JJLjava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-wide p3, p0, Lcom/perm/kate/DocClickHelper$5;->val$doc_id:J

    iput-wide p5, p0, Lcom/perm/kate/DocClickHelper$5;->val$owner_id:J

    iput-object p7, p0, Lcom/perm/kate/DocClickHelper$5;->val$title:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 182
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 170
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/DocClickHelper$5;->val$doc_id:J

    iget-wide v3, p0, Lcom/perm/kate/DocClickHelper$5;->val$owner_id:J

    iget-object v5, p0, Lcom/perm/kate/DocClickHelper$5;->val$title:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateDocTitle(JJLjava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$700(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$700(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;->docEdited()V

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$5;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
