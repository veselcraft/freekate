.class public Lcom/perm/kate/TimezoneChecker;
.super Ljava/lang/Object;
.source "TimezoneChecker.java"


# instance fields
.field private serverTimeCallback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/perm/kate/TimezoneChecker$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/TimezoneChecker$2;-><init>(Lcom/perm/kate/TimezoneChecker;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/TimezoneChecker;->serverTimeCallback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/TimezoneChecker;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/TimezoneChecker;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/TimezoneChecker;->serverTimeCallback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method


# virtual methods
.method public checkServerTime()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/perm/kate/TimezoneChecker$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/TimezoneChecker$1;-><init>(Lcom/perm/kate/TimezoneChecker;)V

    .line 27
    invoke-virtual {v0}, Lcom/perm/kate/TimezoneChecker$1;->start()V

    .line 28
    return-void
.end method
