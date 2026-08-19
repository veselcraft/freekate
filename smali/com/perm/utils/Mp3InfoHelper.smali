.class public Lcom/perm/utils/Mp3InfoHelper;
.super Ljava/lang/Object;
.source "Mp3InfoHelper.java"


# instance fields
.field private callback:Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;


# direct methods
.method public constructor <init>(Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/perm/utils/Mp3InfoHelper;->callback:Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/Mp3InfoHelper;)Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/perm/utils/Mp3InfoHelper;->callback:Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;

    return-object p0
.end method


# virtual methods
.method public getLength(Ljava/lang/String;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/perm/utils/Mp3InfoHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/utils/Mp3InfoHelper$1;-><init>(Lcom/perm/utils/Mp3InfoHelper;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
