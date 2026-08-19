.class Lcom/perm/kate/DocClickHelper$6;
.super Ljava/lang/Thread;
.source "DocClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$doc_id:J

.field final synthetic val$edit_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$owner_id:J

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$6;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-wide p2, p0, Lcom/perm/kate/DocClickHelper$6;->val$owner_id:J

    iput-wide p4, p0, Lcom/perm/kate/DocClickHelper$6;->val$doc_id:J

    iput-object p6, p0, Lcom/perm/kate/DocClickHelper$6;->val$title:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/DocClickHelper$6;->val$edit_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 189
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/DocClickHelper$6;->val$owner_id:J

    iget-wide v3, p0, Lcom/perm/kate/DocClickHelper$6;->val$doc_id:J

    iget-object v5, p0, Lcom/perm/kate/DocClickHelper$6;->val$title:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/DocClickHelper$6;->val$edit_callback:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/DocClickHelper$6;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v6}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->editDoc(JJLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
