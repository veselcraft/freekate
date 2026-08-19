.class Lcom/perm/kate/ChangePasswordActivity$6;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ChangePasswordActivity;->successOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$6;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$6;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
