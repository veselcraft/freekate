.class Lcom/perm/kate/BirthdaysActivity$4$1;
.super Ljava/lang/Object;
.source "BirthdaysActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BirthdaysActivity$4;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BirthdaysActivity$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdaysActivity$4;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$4$1;->this$1:Lcom/perm/kate/BirthdaysActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$4$1;->this$1:Lcom/perm/kate/BirthdaysActivity$4;

    iget-object v0, v0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v0}, Lcom/perm/kate/BirthdaysActivity;->access$200(Lcom/perm/kate/BirthdaysActivity;)V

    .line 123
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$4$1;->this$1:Lcom/perm/kate/BirthdaysActivity$4;

    iget-object v0, v0, Lcom/perm/kate/BirthdaysActivity$4;->this$0:Lcom/perm/kate/BirthdaysActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
