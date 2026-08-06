.class Lcom/perm/kate/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/perm/kate/MainActivity$1;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->start()V

    .line 175
    iget-object v0, p0, Lcom/perm/kate/MainActivity$1;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v0}, Lcom/perm/kate/MainActivity;->access$000(Lcom/perm/kate/MainActivity;)V

    .line 178
    new-instance v0, Lcom/perm/kate/TimezoneChecker;

    invoke-direct {v0}, Lcom/perm/kate/TimezoneChecker;-><init>()V

    invoke-virtual {v0}, Lcom/perm/kate/TimezoneChecker;->checkServerTime()V

    .line 179
    return-void
.end method
