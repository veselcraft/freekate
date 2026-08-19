.class Lcom/perm/utils/UpdateChecker$3;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/perm/utils/UpdateChecker$3;->val$text:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/UpdateChecker$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/perm/utils/UpdateChecker$3;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/utils/UpdateChecker$3;->val$context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/utils/UpdateChecker;->access$000(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
