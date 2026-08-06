.class Lcom/perm/kate/MainActivity$5;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->getCounters()V
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
    .line 299
    iput-object p1, p0, Lcom/perm/kate/MainActivity$5;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MainActivity$5;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v1}, Lcom/perm/kate/MainActivity;->access$300(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MainActivity$5;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getCounters(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 303
    return-void
.end method
