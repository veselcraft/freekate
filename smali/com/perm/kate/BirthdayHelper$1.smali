.class Lcom/perm/kate/BirthdayHelper$1;
.super Ljava/lang/Object;
.source "BirthdayHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/perm/kate/BirthdayHelper$ExUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdayHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdayHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BirthdayHelper;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/perm/kate/BirthdayHelper$1;->this$0:Lcom/perm/kate/BirthdayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/perm/kate/BirthdayHelper$ExUser;Lcom/perm/kate/BirthdayHelper$ExUser;)I
    .locals 3
    .param p1, "lhs"    # Lcom/perm/kate/BirthdayHelper$ExUser;
    .param p2, "rhs"    # Lcom/perm/kate/BirthdayHelper$ExUser;

    .prologue
    .line 61
    const/4 v0, -0x1

    .line 62
    .local v0, "res":I
    iget-object v1, p1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iget-object v2, p2, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iget-object v2, p2, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcom/perm/kate/BirthdayHelper$ExUser;

    check-cast p2, Lcom/perm/kate/BirthdayHelper$ExUser;

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/BirthdayHelper$1;->compare(Lcom/perm/kate/BirthdayHelper$ExUser;Lcom/perm/kate/BirthdayHelper$ExUser;)I

    move-result v0

    return v0
.end method
