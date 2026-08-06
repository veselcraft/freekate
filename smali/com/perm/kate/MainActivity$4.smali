.class Lcom/perm/kate/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->onStart()V
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
    .line 287
    iput-object p1, p0, Lcom/perm/kate/MainActivity$4;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/perm/kate/MainActivity$4;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v0}, Lcom/perm/kate/MainActivity;->access$200(Lcom/perm/kate/MainActivity;)V

    .line 291
    return-void
.end method
