.class Lcom/perm/kate/DocClickHelper$2;
.super Ljava/lang/Thread;
.source "DocClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$doc_id:J

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;JJ)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$2;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-wide p2, p0, Lcom/perm/kate/DocClickHelper$2;->val$doc_id:J

    iput-wide p4, p0, Lcom/perm/kate/DocClickHelper$2;->val$owner_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 127
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/DocClickHelper$2;->val$doc_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/DocClickHelper$2;->val$owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/DocClickHelper$2;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v3}, Lcom/perm/kate/DocClickHelper;->access$500(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/DocClickHelper$2;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {v4}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->deleteDoc(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
