.class Lcom/perm/utils/UpdateChecker$1;
.super Ljava/lang/Thread;
.source "UpdateChecker.java"


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$have_session:Z

.field final synthetic val$manual:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/perm/utils/UpdateChecker$1;->val$context:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/perm/utils/UpdateChecker$1;->val$have_session:Z

    iput-boolean p3, p0, Lcom/perm/utils/UpdateChecker$1;->val$manual:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/perm/utils/UpdateChecker$1;->val$context:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/perm/utils/UpdateChecker$1;->val$have_session:Z

    iget-boolean v2, p0, Lcom/perm/utils/UpdateChecker$1;->val$manual:Z

    invoke-static {v0, v1, v2}, Lcom/perm/utils/UpdateChecker;->check(Landroid/app/Activity;ZZ)V

    return-void
.end method
