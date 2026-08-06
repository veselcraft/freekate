.class final Lcom/perm/utils/UpdateChecker$3;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/UpdateChecker;->displayAlertOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/perm/utils/UpdateChecker$3;->val$text:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/UpdateChecker$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/perm/utils/UpdateChecker$3;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/utils/UpdateChecker$3;->val$context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/utils/UpdateChecker;->access$000(Ljava/lang/String;Landroid/app/Activity;)V

    .line 169
    return-void
.end method
