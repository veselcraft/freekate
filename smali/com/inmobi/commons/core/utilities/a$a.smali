.class Lcom/inmobi/commons/core/utilities/a$a;
.super Landroid/os/Handler;
.source "ApplicationFocusChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/utilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    if-eqz v0, :cond_2

    .line 221
    iput-boolean v2, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    .line 222
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/a;->a(Z)V

    .line 223
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App has gone to background."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    if-nez v0, :cond_0

    .line 225
    iput-boolean v3, p0, Lcom/inmobi/commons/core/utilities/a$a;->a:Z

    .line 226
    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/a;->a(Z)V

    .line 227
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App has come to foreground."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
