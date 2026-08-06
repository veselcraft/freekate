.class final Lcom/perm/utils/UpdateChecker$1;
.super Ljava/lang/Thread;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/UpdateChecker;->checkOnThread(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$have_session:Z

.field final synthetic val$manual:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/perm/utils/UpdateChecker$1;->val$context:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/perm/utils/UpdateChecker$1;->val$have_session:Z

    iput-boolean p3, p0, Lcom/perm/utils/UpdateChecker$1;->val$manual:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/utils/UpdateChecker$1;->val$context:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/perm/utils/UpdateChecker$1;->val$have_session:Z

    iget-boolean v2, p0, Lcom/perm/utils/UpdateChecker$1;->val$manual:Z

    invoke-static {v0, v1, v2}, Lcom/perm/utils/UpdateChecker;->check(Landroid/app/Activity;ZZ)V

    .line 37
    return-void
.end method
