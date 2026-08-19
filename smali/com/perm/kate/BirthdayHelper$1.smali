.class Lcom/perm/kate/BirthdayHelper$1;
.super Ljava/lang/Object;
.source "BirthdayHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdayHelper;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/perm/kate/BirthdayHelper$ExUser;Lcom/perm/kate/BirthdayHelper$ExUser;)I
    .locals 2

    .line 64
    iget-object v0, p1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iget-object v1, p2, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result p1

    iget-object p2, p2, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 60
    check-cast p1, Lcom/perm/kate/BirthdayHelper$ExUser;

    check-cast p2, Lcom/perm/kate/BirthdayHelper$ExUser;

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/BirthdayHelper$1;->compare(Lcom/perm/kate/BirthdayHelper$ExUser;Lcom/perm/kate/BirthdayHelper$ExUser;)I

    move-result p1

    return p1
.end method
