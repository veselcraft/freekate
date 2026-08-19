.class Lcom/perm/utils/FakeCheck$1;
.super Lcom/perm/kate/session/Callback;
.source "FakeCheck.java"


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 33
    sget v0, Lcom/perm/utils/FakeCheck;->fake:I

    invoke-static {p1}, Lcom/perm/utils/FakeCheck;->checkFriends(Ljava/util/ArrayList;)I

    move-result p1

    add-int/2addr v0, p1

    sput v0, Lcom/perm/utils/FakeCheck;->fake:I

    return-void
.end method
