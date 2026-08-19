.class abstract synthetic Lcom/perm/kate/WallFragment$23;
.super Ljava/lang/Object;
.source "WallFragment.java"


# static fields
.field static final synthetic $SwitchMap$com$perm$kate$WallFragment$PostFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 810
    invoke-static {}, Lcom/perm/kate/WallFragment$PostFilter;->values()[Lcom/perm/kate/WallFragment$PostFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/perm/kate/WallFragment$23;->$SwitchMap$com$perm$kate$WallFragment$PostFilter:[I

    :try_start_0
    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->OWNER:Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/perm/kate/WallFragment$23;->$SwitchMap$com$perm$kate$WallFragment$PostFilter:[I

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/perm/kate/WallFragment$23;->$SwitchMap$com$perm$kate$WallFragment$PostFilter:[I

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/perm/kate/WallFragment$23;->$SwitchMap$com$perm$kate$WallFragment$PostFilter:[I

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->ARCHIVED:Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
