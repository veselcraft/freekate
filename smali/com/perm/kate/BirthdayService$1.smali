.class Lcom/perm/kate/BirthdayService$1;
.super Ljava/lang/Thread;
.source "BirthdayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BirthdayService;->handleStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdayService;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdayService;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/perm/kate/BirthdayService$1;->this$0:Lcom/perm/kate/BirthdayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/perm/kate/BirthdayService$1;->this$0:Lcom/perm/kate/BirthdayService;

    invoke-static {v0}, Lcom/perm/kate/BirthdayService;->access$000(Lcom/perm/kate/BirthdayService;)V

    return-void
.end method
